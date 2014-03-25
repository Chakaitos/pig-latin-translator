require 'spec_helper'

describe PigLatin do
	describe "translate" do
		context "If word starts with 'y'" do
			it "sends 'y' to the end of the word and adds 'ay' after" do
				expect(PigLatin.translate('yellow')).to eq 'ellowyay'
			end
		end

		context "If word starts with vowel" do
			it "should add 'way' to the end of the word" do
				expect(PigLatin.translate('egg')).to eq 'eggway'
			end
		end

		context "If word starts with a consonant" do
			it "moves the starting consonant(s) to the end and adds 'ay' after" do
				expect(PigLatin.translate('glove')).to eq 'oveglay'
			end

			it "should count 'y' as a vowel" do
				expect(PigLatin.translate('rhythm')).to eq 'ythmrhay'
			end
		end
	end
end